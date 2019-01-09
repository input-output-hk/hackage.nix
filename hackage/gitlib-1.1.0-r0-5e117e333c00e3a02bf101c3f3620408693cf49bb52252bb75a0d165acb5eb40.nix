{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gitlib"; version = "1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@fpcomplete.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "API library for working with Git repositories";
      description = "@gitlib@ is a high-level, lazy and conduit-aware set of abstractions for\nprogramming with Git types.  Several different backends are available,\nincluding one for the libgit2 C library (<http://libgit2.github.com>) (see\n@gitlib-libgit2@).  The aim is both type-safety and convenience of use for\nHaskell users, combined with high performance and minimal memory footprint\nby taking advantage of Haskell's laziness and the conduit library's\ndeterministic resource cleanup.\n\nFor further information, as well as typical use cases, see \"Git.Tutorial\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.failure)
          (hsPkgs.lifted-base)
          (hsPkgs.system-filepath)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.doctest-prop)
            (hsPkgs.filepath)
            ];
          };
        };
      };
    }