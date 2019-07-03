<?php

class Utitlities {

    

    /**
     * redirect
     *
     * @param string $path
     * @return void
     */
    public function redirect(string $path = ""){
        
        header('Location: http://localhost/appcreatuity/'.$path);

    }

}