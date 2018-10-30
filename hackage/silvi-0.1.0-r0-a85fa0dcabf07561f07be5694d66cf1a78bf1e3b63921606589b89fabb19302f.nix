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
        name = "silvi";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dcartwright@layer3com.com";
      author = "Daniel Cartwright";
      homepage = "https://github.com/chessai/silvi#readme";
      url = "";
      synopsis = "A generator for different kinds of data.";
      description = "A Haskell library for generating fake\ndata.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.chronos)
          (hsPkgs.http-types)
          (hsPkgs.ip)
          (hsPkgs.quantification)
          (hsPkgs.savage)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.quantification)
            (hsPkgs.savage)
            (hsPkgs.silvi)
            (hsPkgs.text)
          ];
        };
      };
    };
  }