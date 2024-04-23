{
  "0.1.0.0" = {
    sha256 = "def6126edb5aaeb808b8acb34f694c9ce3966f66ddac62a5ba09cf28378e1bcf";
    revisions = {
      r0 = {
        nix = import ../hackage/data-function-meld-0.1.0.0-r0-dca8dded9eafd9719a6db10639beaf0842a522ac387f9aeb80b65ebebb45df32.nix;
        revNum = 0;
        sha256 = "dca8dded9eafd9719a6db10639beaf0842a522ac387f9aeb80b65ebebb45df32";
      };
      r1 = {
        nix = import ../hackage/data-function-meld-0.1.0.0-r1-7c644b5b5aba58028446255e1bfbf2e2aa832aa27fd3de943d34b047537ec4c9.nix;
        revNum = 1;
        sha256 = "7c644b5b5aba58028446255e1bfbf2e2aa832aa27fd3de943d34b047537ec4c9";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "8dbf298b64856e65dce50b235a804a10d654c0ca6b78a20ca1e841ce8668d63e";
    revisions = {
      r0 = {
        nix = import ../hackage/data-function-meld-0.1.1.0-r0-4aab4ddee7da043988598989caf657844fec7fd7aef394ca92ab1e6c96b1eefb.nix;
        revNum = 0;
        sha256 = "4aab4ddee7da043988598989caf657844fec7fd7aef394ca92ab1e6c96b1eefb";
      };
      default = "r0";
    };
  };
}