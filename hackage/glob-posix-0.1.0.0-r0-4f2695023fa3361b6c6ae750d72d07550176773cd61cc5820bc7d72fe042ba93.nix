{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "glob-posix";
        version = "0.1.0.0";
      };
      license = "LicenseRef-Apache";
      copyright = "2016 Reuben D'Netto";
      maintainer = "rdnetto@gmail.com";
      author = "Reuben D'Netto";
      homepage = "https://github.com/rdnetto/glob-posix#readme";
      url = "";
      synopsis = "Haskell bindings for POSIX glob library.";
      description = "Wrapper for the glob(3) function. The key functions are glob and globMany.\nGNU extensions are supported but contained in a different module to encourage portability.";
      buildType = "Simple";
    };
    components = {
      "glob-posix" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "glob-posix-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.glob-posix)
            (hsPkgs.tasty)
            (hsPkgs.tasty-expected-failure)
            (hsPkgs.tasty-hunit)
            (hsPkgs.unix)
          ];
        };
      };
      benchmarks = {
        "glob-posix-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.MissingH)
            (hsPkgs.Glob)
            (hsPkgs.glob-posix)
          ];
        };
      };
    };
  }