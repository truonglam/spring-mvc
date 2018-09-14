package com.lamtraining.controller.api;

import com.lamtraining.dto.UploadFileDTO;
import com.lamtraining.utils.UploadFileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.io.File;
import java.util.Base64;

@RestController
public class HomeAPI {

    @Autowired
    private UploadFileUtils uploadFileUtils;

    @PostMapping(value = "/api/home")
    public ResponseEntity<Void> uploadFile(@RequestBody UploadFileDTO uploadFileDTO) {
        try {
            byte[] decodeBase64 = Base64.getDecoder().decode(uploadFileDTO.getBase64().getBytes());
            uploadFileUtils.writeOrUpdate(decodeBase64, "/thumbnail/"+uploadFileDTO.getName());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.noContent().build();
    }
}
