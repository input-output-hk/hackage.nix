{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "record-dot-preprocessor"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2018-2019";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/record-dot-preprocessor#readme";
      url = "";
      synopsis = "Preprocessor to allow record.field syntax";
      description = "In almost every programming language @a.b@ will get the @b@ field from the @a@ data type, and many different data types can have a @b@ field.\nThe reason this feature is ubiquitous is because it's /useful/.\nThe @record-dot-preprocessor@ brings this feature to Haskell - see the README for full details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.uniplate)
          (hsPkgs.ghc)
          (hsPkgs.extra)
          ];
        };
      exes = {
        "record-dot-preprocessor" = {
          depends = [ (hsPkgs.base) (hsPkgs.extra) ];
          };
        };
      tests = {
        "record-dot-preprocessor-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.extra)
            (hsPkgs.record-hasfield)
            (hsPkgs.filepath)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.6") (hsPkgs.record-dot-preprocessor);
          };
        };
      };
    }