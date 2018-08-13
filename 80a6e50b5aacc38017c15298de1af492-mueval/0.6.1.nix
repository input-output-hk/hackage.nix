{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "mueval";
        version = "0.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gwern <gwern0@gmail.com>";
      author = "Gwern";
      homepage = "http://code.haskell.org/mubot/";
      url = "";
      synopsis = "Safely evaluate Haskell expressions";
      description = "Mueval is a Haskell interpreter. It\nuses the GHC API to evaluate arbitrary Haskell expressions.\nImportantly, mueval takes many precautions to defang and avoid \\\"evil\\\"\ncode.  It uses resource limits, whitelisted modules,\nspecial Show instances for IO, threads, changes of directory, and so\non to sandbox the Haskell code.\n\nIt is, in short, intended to be a standalone version of Lambdabot's famous\nevaluation functionality. For examples and explanations, please see the README file.\n\nMueval is currently POSIX-only.";
      buildType = "Simple";
    };
    components = {
      "mueval" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.hint)
          (hsPkgs.show)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "mueval" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }