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
      specVersion = "0";
      identifier = {
        name = "modsplit";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dmitry Golubovsky <golubovsky@gmail.com>";
      author = "Dmitry Golubovsky";
      homepage = "";
      url = "";
      synopsis = "Haskell source splitter driven by special comments.";
      description = "The \"modsplit\" program takes a (most likely auto-generated) single-module\nHaskell source file containing specifically formatted comments and\nsplits it into several modules according to the directives\ncontained in the special comments.\n\nThis program has its roots in HSFFIG, and the format of these\ncomments is described here:\n\n<http://www.haskell.org/haskellwiki/HSFFIG/Tutorial#Splitting_large_modules>\n\nThis program is intended to post-process the output of programs generating\nHaskell code rather than to deal with handwritten code.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "modsplit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.utf8-env)
            (hsPkgs.utf8-string)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }