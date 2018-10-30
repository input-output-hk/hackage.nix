{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "toboggan";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/toboggan#readme";
      url = "";
      synopsis = "Twitter bot generator";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.madlang)
          (hsPkgs.tweet-hs)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.optparse-generic)
        ];
      };
      exes = {
        "toboggan" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.toboggan)
          ];
        };
      };
    };
  }