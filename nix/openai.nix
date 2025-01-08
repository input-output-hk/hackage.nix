{
  "1.0.0" = {
    sha256 = "d53caeb44fc1488495865792f5378b2d73a6503d0f89f48300f91b9260ac90a4";
    revisions = {
      r0 = {
        nix = import ../hackage/openai-1.0.0-r0-c0051bd5a6839c76ee25c45813643c1ef391ce24e27ec5409ab6d1fd2b26cfde.nix;
        revNum = 0;
        sha256 = "c0051bd5a6839c76ee25c45813643c1ef391ce24e27ec5409ab6d1fd2b26cfde";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "055aa6a4a647a441c0483b9730b628470ca955416720f51c6540687d8e325e7a";
    revisions = {
      r0 = {
        nix = import ../hackage/openai-1.0.1-r0-e06a054901e0df7b846f93c61c4841c2bd151d126e7014ec64397e9a40374052.nix;
        revNum = 0;
        sha256 = "e06a054901e0df7b846f93c61c4841c2bd151d126e7014ec64397e9a40374052";
      };
      default = "r0";
    };
  };
}