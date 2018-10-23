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
        name = "gitlib";
        version = "3.0.0";
      };
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
      "gitlib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.failure)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }