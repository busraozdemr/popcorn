function fn() {

    var config = {
        authorization:'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJidXNyYUBwb3Bjb3JudmFuLmNvbSIsIm5hbWUiOiJiw7zFn3JhIGLDvMWfcmEiLCJVc2VyVHlwZSI6IkVtcGxveWVlIiwiTmFtZSI6ImLDvMWfcmEgYsO8xZ9yYSIsIkVtYWlsIjoiYnVzcmFAcG9wY29ybnZhbi5jb20iLCJVc2VySWQiOiIzYzA1ZjhjMS1iMmMzLTQ0NjUtYjRlNS03NmE1ZThlNzkzYTgiLCJuYmYiOjE2NDEyMTYzMTMsImV4cCI6MTY3Mjc1MjMxMywiaWF0IjoxNjQxMjE2MzEzLCJpc3MiOiJodHRwczovL3BvcGNvcm52YW4uY29tLyIsImF1ZCI6Imh0dHBzOi8vcG9wY29ybnZhbi5jb20vIn0.tqa3L0JFc1QmaOz-1N9qe9HoaAQqBVGPonbkzfshj_NF9S-rOnnpQzCe1NcTZvLYAgKojToO57QsUWi_f5XN-w',
        userApiUrl:'https://testapi.popcornvan.cloud/user/'
    }
    var env = karate.env
    karate.log('Environment variable is :', env)

    if (env=='qa'){
        config.someUrl = 'https://reqres.in/api/users/2';
    }else if(env=='dev'){
        config.someUrl = 'https://dev.in/api/users/2';
    }else{

    }
    var result = karate.callSingle('classpath:features/authentication/generateAccessToken.feature')
    config.authInfo = result;
    config.auth = {accessToken:result.response.access_token}

    return config;
}