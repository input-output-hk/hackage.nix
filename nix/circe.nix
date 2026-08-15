{
  "0.1.0.0" = {
    sha256 = "f5ce6b08740457ead13783638d63d498632553908c617d93c1fc44cf9f7ae0cc";
    revisions = {
      r0 = {
        nix = import ../hackage/circe-0.1.0.0-r0-b450cd9792760e905ec27a267a7522c664dd2cfd67d5dc9d54f0840583cb85d8.nix;
        revNum = 0;
        sha256 = "b450cd9792760e905ec27a267a7522c664dd2cfd67d5dc9d54f0840583cb85d8";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "c7f2d0a6c4ba9f38fefa929a53bd15f45b7d6251a114c2233a8d2521a2be76dc";
    revisions = {
      r0 = {
        nix = import ../hackage/circe-0.2.0.0-r0-c0e05bd7ceffa183dc7c53675185c2051fd82bf8a37a885e33585973872e988f.nix;
        revNum = 0;
        sha256 = "c0e05bd7ceffa183dc7c53675185c2051fd82bf8a37a885e33585973872e988f";
      };
      default = "r0";
    };
  };
}