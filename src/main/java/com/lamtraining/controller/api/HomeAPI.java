package com.lamtraining.controller.api;

import com.lamtraining.dto.UploadFileDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeAPI {

    @PostMapping(value = "/api/home")
    public ResponseEntity<Void> uploadFile(@RequestBody UploadFileDTO uploadFileDTO) {
        return ResponseEntity.noContent().build();
    }
}
