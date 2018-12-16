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
        name = "cabalg";
        version = "0.2.9";
      };
      license = "MIT";
      copyright = "";
      maintainer = "malikov.d.y@gmail.com";
      author = "Dmitry Malikov";
      homepage = "";
      url = "";
      synopsis = "alias for cabal install from given git repo";
      description = "'cabalg' is an alias for installing cabal package from a git source repository.\n\nE.g.\n\n@\$ git clone https:\\/\\/github.com\\/author\\/foo\n\$ git clone https:\\/\\/github.com\\/author\\/bar\n\$ cabal install foo\\/foo.cabal bar\\/bar.cabal baz.cabal\n@\n\ncould be abbreviated by\n\n@\$ cabalg https:\\/\\/github.com\\/author\\/foo https:\\/\\/github.com\\/author\\/bar -- biegunka.cabal\n@\n\nIt also supports arbitrary git revisions mentioning like\n\n@ \$ cabalg https:\\/\\/github.com\\/baz\\/quux\\@f524f97\n@\n\nNecessary arguments could be passed to 'cabal install' with '--' delimiter like\n\n@\$ cabalg \\<repo1\\> ... \\<repoN\\> [\\-\\- \\<cabal-install args\\>]\n@\n\nPlease notice, that '--single-branch' flag  comes with git-1.7.10 (<https://lkml.org/lkml/2012/3/28/418>) and later, so you probably want to have it.\n\nIt's supposed to be Windows-compatible (not sure about the tests)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
        ];
      };
      exes = {
        "cabalg" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cabalg)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
          ];
        };
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }