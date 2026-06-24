{
  "0.1.0.0" = {
    sha256 = "0a0410f9dfadf6eb833d4b1fd7cedccb414a988e7a36e10bd973f04d7fa8bdac";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-stack-annotations-0.1.0.0-r0-56bdded7dc6a72ea338b96fdb9da1806c583bfdf3286aa9d092bf072d36bac21.nix;
        revNum = 0;
        sha256 = "56bdded7dc6a72ea338b96fdb9da1806c583bfdf3286aa9d092bf072d36bac21";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "04253ddc1839e10d2d3c5b380d1e1c30945ca4d7e77a4fcd3daa9c221b9acee6";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-stack-annotations-0.2.0.0-r0-ba3452c76a5ec7daa150d11ae8bf34270c8877d0214516019469b7f32f679c0f.nix;
        revNum = 0;
        sha256 = "ba3452c76a5ec7daa150d11ae8bf34270c8877d0214516019469b7f32f679c0f";
      };
      default = "r0";
    };
  };
}