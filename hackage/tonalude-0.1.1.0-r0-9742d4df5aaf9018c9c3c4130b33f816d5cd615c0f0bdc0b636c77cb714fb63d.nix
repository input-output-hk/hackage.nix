{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tonalude"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2018 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/tonatona-project/tonatona#readme";
      url = "";
      synopsis = "A standard library for Tonatona framework.";
      description = "Tonaparser provides a way to pass runtime configurations. This library is supposed to be used with @tonatona@. The Tonalude module works as a prelude replacement for Tonatona framework, providing more functionality and types out of the box than the standard prelude (such as common data types like ByteString and Text), as well as removing common \"gotchas\", like partial functions and lazy I/O.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.rio)
          (hsPkgs.unliftio)
          ];
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.Glob)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.doctest)
            (hsPkgs.rio)
            (hsPkgs.unliftio)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.rio)
            (hsPkgs.unliftio)
            ];
          };
        };
      };
    }