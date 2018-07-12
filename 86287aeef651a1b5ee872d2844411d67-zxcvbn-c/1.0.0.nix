{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "zxcvbn-c";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Joey Hess, 2015 Tony Evans";
        maintainer = "Joey Hess <id@joeyh.name>";
        author = "Joey Hess";
        homepage = "";
        url = "";
        synopsis = "Password strength estimation";
        description = "This is a Haskell binding to the C port of the zxcvbn\npassword strength estimator, from https://github.com/tsyrogit/zxcvbn-c\n\nAn article on the reasons for zxcvbn is at\nhttps://tech.dropox.com/2012/04/zxcvbn-realistic-password-strength-estimation";
        buildType = "Custom";
      };
      components = {
        "zxcvbn-c" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }