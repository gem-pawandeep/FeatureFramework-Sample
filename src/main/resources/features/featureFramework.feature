Feature: FeatureFramework

  Scenario: Login User
    Given url https://apis-beta.gemecosystem.com/login
    Given requestBody {"username":"raghav.suneja","password":"91f1388c35a60c34a8f65b660271a188"}
    Given method post
    Given Assert : verify status : #(status) EQUALS 200

  Scenario: API to copy the manual testcase into the requirement
    Given url https://apis-beta.gemecosystem.com/v2/manual/testcase/copy/suite
    Given headers Authorization = Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyYWdoYXYuc3VuZWphIiwiYXVkIjoiQ09SUE9SQVRFIiwiaWF0IjoxNjg3ODY5NjEwLCJleHAiOjE2ODc5MTI4MTB9.fcoImNaKt9Gqjz2MiqwrMV6inA5btapHuFTJ87Y7iTyKR-ezyAuHs6CFDh9xfz0J5HtE3geSn2meKt16a0xyhQ
    Given requestBody {"id": "1530","s_id": [340]}
    Given method post
    Given Assert : verify status : #(status) EQUALS 200

  Scenario: API to import the manual testcase into the requirement
    Given url https://apis-beta.gemecosystem.com/v2/manual/testcase/import/suite
    Given headers Authorization = Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyYWdoYXYuc3VuZWphIiwiYXVkIjoiQ09SUE9SQVRFIiwiaWF0IjoxNjg3ODY5NjEwLCJleHAiOjE2ODc5MTI4MTB9.fcoImNaKt9Gqjz2MiqwrMV6inA5btapHuFTJ87Y7iTyKR-ezyAuHs6CFDh9xfz0J5HtE3geSn2meKt16a0xyhQ
    Given requestBody {"id":1532,"s_id":[339]}
    Given method post
    Given Assert : verify status : #(status) EQUALS 200

  Scenario: API to import the manual testcase into the requirement using Wrong ID
    Given url https://apis-beta.gemecosystem.com/v2/manual/testcase/import/suite
    Given headers Authorization = Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyYWdoYXYuc3VuZWphIiwiYXVkIjoiQ09SUE9SQVRFIiwiaWF0IjoxNjg3ODY5NjEwLCJleHAiOjE2ODc5MTI4MTB9.fcoImNaKt9Gqjz2MiqwrMV6inA5btapHuFTJ87Y7iTyKR-ezyAuHs6CFDh9xfz0J5HtE3geSn2meKt16a0xyhQ
    Given requestBody {"id":15322,"s_id":[339]}
    Given method post
    Given Assert : verify status : #(status) EQUALS 200

  Scenario: API to get culprit test cases
    Given url https://apis-beta.gemecosystem.com/v1/dashboard/culprits-analytics
    Given headers Authorization = Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyYWdoYXYuc3VuZWphIiwiYXVkIjoiQ09SUE9SQVRFIiwiaWF0IjoxNjg3ODY5NjEwLCJleHAiOjE2ODc5MTI4MTB9.fcoImNaKt9Gqjz2MiqwrMV6inA5btapHuFTJ87Y7iTyKR-ezyAuHs6CFDh9xfz0J5HtE3geSn2meKt16a0xyhQ
    Given requestBody {"pids": [35, 37, 38, 41, 112]}
    Given method post
    Given Assert : verify status : #(status) EQUALS 200

  Scenario: API to unblock users
    Given url https://apis-beta.gemecosystem.com/v2/unblock/users
    Given headers Authorization = Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyYWdoYXYuc3VuZWphIiwiYXVkIjoiQ09SUE9SQVRFIiwiaWF0IjoxNjg3ODY5NjEwLCJleHAiOjE2ODc5MTI4MTB9.fcoImNaKt9Gqjz2MiqwrMV6inA5btapHuFTJ87Y7iTyKR-ezyAuHs6CFDh9xfz0J5HtE3geSn2meKt16a0xyhQ
    Given requestBody {"username": ["geco-vaibhava"]}
    Given method post
    Given Assert : verify status : #(status) EQUALS 200

  Scenario: API to get Manual Testcase folder data in Manual TestCase screen
    Given url https://apis-beta.gemecosystem.com/v2/testcase/folder
    Given headers Authorization = Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyYWdoYXYuc3VuZWphIiwiYXVkIjoiQ09SUE9SQVRFIiwiaWF0IjoxNjg3ODY5NjEwLCJleHAiOjE2ODc5MTI4MTB9.fcoImNaKt9Gqjz2MiqwrMV6inA5btapHuFTJ87Y7iTyKR-ezyAuHs6CFDh9xfz0J5HtE3geSn2meKt16a0xyhQ
    Given requestBody {"folderId": null, "companyName": "GEMECOSYSTEM PVT. LTD."}
    Given method post
    Given Assert : verify status : #(status) EQUALS 200

  Scenario: API to get Manual Testcase folder data in Manual TestCase screen using wrong company name
    Given url https://apis-beta.gemecosystem.com/v2/testcase/folder
    Given headers Authorization = Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyYWdoYXYuc3VuZWphIiwiYXVkIjoiQ09SUE9SQVRFIiwiaWF0IjoxNjg3ODY5NjEwLCJleHAiOjE2ODc5MTI4MTB9.fcoImNaKt9Gqjz2MiqwrMV6inA5btapHuFTJ87Y7iTyKR-ezyAuHs6CFDh9xfz0J5HtE3geSn2meKt16a0xyhQ
    Given requestBody {"folderId": null, "companyName": "GEMECOSYSTEddM PVT. LTD."}
    Given method post
    Given Assert : verify status : #(status) EQUALS 200

  Scenario: API to insert executed manual testcase.
    Given url https://apis-beta.gemecosystem.com/manual/insertion
    Given headers Authorization = Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyYWdoYXYuc3VuZWphIiwiYXVkIjoiQ09SUE9SQVRFIiwiaWF0IjoxNjg3ODY5NjEwLCJleHAiOjE2ODc5MTI4MTB9.fcoImNaKt9Gqjz2MiqwrMV6inA5btapHuFTJ87Y7iTyKR-ezyAuHs6CFDh9xfz0J5HtE3geSn2meKt16a0xyhQ
    Given requestBody {"tc_run_id": "API_to_get_final_manual_steps_using_wornf_id_7d6d854d_5f69_4258_b84b_92d9188943d8_1686661601000","machine": "JEWEL","steps": [{"status": "PASS","description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.","screenshot": null,"step name": "test-step"}],"end_time": 1681199521000}
    Given method put
    Given Assert : verify status : #(status) EQUALS 200

  Scenario: API to copy the manual testcase into the requirement using wrong SID and ID
    Given url https://apis-beta.gemecosystem.com/v2/manual/testcase/copy/suite
    Given headers Authorization = Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyYWdoYXYuc3VuZWphIiwiYXVkIjoiQ09SUE9SQVRFIiwiaWF0IjoxNjg3ODY5NjEwLCJleHAiOjE2ODc5MTI4MTB9.fcoImNaKt9Gqjz2MiqwrMV6inA5btapHuFTJ87Y7iTyKR-ezyAuHs6CFDh9xfz0J5HtE3geSn2meKt16a0xyhQ
    Given requestBody {"id": "15301","s_id": [3401]}
    Given method post
    Given Assert : verify status : #(status) EQUALS 200