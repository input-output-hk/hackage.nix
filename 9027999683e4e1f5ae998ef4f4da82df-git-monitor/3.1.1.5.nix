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
      specVersion = "1.10";
      identifier = {
        name = "git-monitor";
        version = "3.1.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "http://github.com/jwiegley/gitlib";
      url = "";
      synopsis = "Passively snapshots working tree changes efficiently.";
      description = "Passively snapshots working tree changes efficiently.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "git-monitor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gitlib)
            (hsPkgs.gitlib-libgit2)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.logging)
            (hsPkgs.filepath)
            (hsPkgs.old-locale)
            (hsPkgs.optparse-applicative)
            (hsPkgs.shelly)
            (hsPkgs.tagged)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.lifted-async)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }