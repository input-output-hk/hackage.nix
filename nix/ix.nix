{
  "0.1.0.0" = {
    sha256 = "af0ea313ba0ab85a14097db36be986c71853b66208287bf8d3a499f97dd5b38c";
    revisions = {
      r0 = {
        nix = import ../hackage/ix-0.1.0.0-r0-c45f0c8153b44ef2de84117ba3b178d752818db8c959a666811cae80fe49a175.nix;
        revNum = 0;
        sha256 = "c45f0c8153b44ef2de84117ba3b178d752818db8c959a666811cae80fe49a175";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "557542ae1588a4bfad5c0f3d7fe60f30216c3480c8591bcfb1f26e9205dc7678";
    revisions = {
      r0 = {
        nix = import ../hackage/ix-0.1.1.0-r0-a03e32afbb7ce37f1ec09653a9dab25806a761d69dc971c145ef18f1baad6f19.nix;
        revNum = 0;
        sha256 = "a03e32afbb7ce37f1ec09653a9dab25806a761d69dc971c145ef18f1baad6f19";
      };
      r1 = {
        nix = import ../hackage/ix-0.1.1.0-r1-9b606731dd1cfbf4e3728c4d1d40fcf1db020d975186b1e68a1b94fcc758d564.nix;
        revNum = 1;
        sha256 = "9b606731dd1cfbf4e3728c4d1d40fcf1db020d975186b1e68a1b94fcc758d564";
      };
      default = "r1";
    };
  };
}