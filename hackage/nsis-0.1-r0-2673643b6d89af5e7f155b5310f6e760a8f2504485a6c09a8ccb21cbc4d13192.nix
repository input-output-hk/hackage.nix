{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { testprog = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "nsis";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Neil Mitchell 2012";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/nsis/";
      url = "";
      synopsis = "Build NSIS Installers";
      description = "Helps writing NSIS Installers, see <http://nsis.sourceforge.net/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.uniplate)
        ];
      };
      exes = {
        "nsis" = {
          depends = [ (hsPkgs.process) ];
        };
      };
    };
  }