{
  "0.0.0.0" = {
    sha256 = "450041ee56a71dd5bd35f64be31e03e0a9e0456711d29475c6bffd21bfb734ab";
    revisions = {
      r0 = {
        nix = import ../hackage/XML-0.0.0.0-r0-0f465b11f3a24dc008ff2b5e174bd85eb00a10337c4792f8f8b80f8c995ad5fc.nix;
        revNum = 0;
        sha256 = "0f465b11f3a24dc008ff2b5e174bd85eb00a10337c4792f8f8b80f8c995ad5fc";
      };
      default = "r0";
    };
  };
  "0.0.1.0" = {
    sha256 = "3b238607d867d1fd19499f336231ae9583d24956641844b87f85e0824d403db2";
    revisions = {
      r0 = {
        nix = import ../hackage/XML-0.0.1.0-r0-34cab6dd166605e41bf81fc5278237493afbbf914428a05921f737e0a11a005f.nix;
        revNum = 0;
        sha256 = "34cab6dd166605e41bf81fc5278237493afbbf914428a05921f737e0a11a005f";
      };
      r1 = {
        nix = import ../hackage/XML-0.0.1.0-r1-5c893453cbec83988aa40dce384ee2c2db18286b64db939dba7ca7272edb1d06.nix;
        revNum = 1;
        sha256 = "5c893453cbec83988aa40dce384ee2c2db18286b64db939dba7ca7272edb1d06";
      };
      default = "r1";
    };
  };
}