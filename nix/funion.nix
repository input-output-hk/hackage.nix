{
  "0.0.1" = {
    sha256 = "0d23275cbc6567f097ff4f96b459643d0aef9a5d7120bd81e13226561cd95331";
    revisions = {
      r0 = {
        nix = import ../hackage/funion-0.0.1-r0-d85a62ecec11cbc81326ea85b59cac88c5aaa57813766710e561a6e8b0292bf8.nix;
        revNum = 0;
        sha256 = "d85a62ecec11cbc81326ea85b59cac88c5aaa57813766710e561a6e8b0292bf8";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "bbf330e07787adef884fcd3cfe5e119afd4bf189154bdfae78e7f5249e23f45d";
    revisions = {
      r0 = {
        nix = import ../hackage/funion-0.0.2-r0-a228edc4c6f2fae5749e95a5284fcfb5a92edf9032172b51286b85d430268412.nix;
        revNum = 0;
        sha256 = "a228edc4c6f2fae5749e95a5284fcfb5a92edf9032172b51286b85d430268412";
      };
      default = "r0";
    };
  };
}