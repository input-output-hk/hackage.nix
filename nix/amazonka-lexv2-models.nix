{
  "2.0" = {
    sha256 = "46265aae765519092f3a107790714f76528c46299f4d366dc651c9b49bce4f0f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-lexv2-models-2.0-r0-473469bf69099a0f5cf2433e72fc1d0d1ab94a35ddb94868cd98d1c14ab31f07.nix;
        revNum = 0;
        sha256 = "473469bf69099a0f5cf2433e72fc1d0d1ab94a35ddb94868cd98d1c14ab31f07";
      };
      r1 = {
        nix = import ../hackage/amazonka-lexv2-models-2.0-r1-927cbe9a254a23d7329394e3e23dbb15e880ef2c2ddaf9fb4dc1e1dc4055ca53.nix;
        revNum = 1;
        sha256 = "927cbe9a254a23d7329394e3e23dbb15e880ef2c2ddaf9fb4dc1e1dc4055ca53";
      };
      default = "r1";
    };
  };
}