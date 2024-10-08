{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "clipper"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chetan Taralekar <chetant@gmail.com>";
      author = "Chetan Taralekar <chetant@gmail.com>";
      homepage = "https://github.com/chetant/clipper";
      url = "";
      synopsis = "Haskell API to clipper (2d polygon union/intersection/xor/clipping API)";
      description = "This is a haskell FFI to clipper (<http://www.angusj.com/delphi/clipper.php>)\n\nClipper's source+license (v4.3.0) is included in this package, so there are no external deps\n\nNOTE: To compile, please specify the C++ compiler by passing --with-gcc=<CXX>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }