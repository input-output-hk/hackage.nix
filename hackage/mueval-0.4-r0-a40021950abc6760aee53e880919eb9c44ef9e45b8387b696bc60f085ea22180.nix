{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "mueval";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gwern <gwern0@gmail.com>";
      author = "Gwern";
      homepage = "http://code.haskell.org/mubot/";
      url = "";
      synopsis = "Safely evaluate Haskell expressions";
      description = "Mueval is a Haskell interpreter. It\nuses the GHC API to evaluate arbitrary Haskell expressions.\nImportantly, mueval takes many precautions to defang and avoid \"evil\"\ncode.  It uses resource limits, whitelisted modules,\nspecial Show instances for IO, threads, changes of directory, and so\non to sandbox the Haskell code. (It is much like Lambdabot's famous\nevaluation functionality.)\n\nMueval is currently POSIX-only.";
      buildType = "Simple";
    };
    components = {
      "mueval" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.hint)
          (hsPkgs.show)
        ];
      };
      exes = {
        "mueval" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }