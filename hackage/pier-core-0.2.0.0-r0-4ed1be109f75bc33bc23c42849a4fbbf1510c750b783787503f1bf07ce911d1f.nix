{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pier-core"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "judah.jacobson@gmail.com";
      author = "";
      homepage = "https://github.com/judah/pier#readme";
      url = "";
      synopsis = "A library for writing forwards-declared build systems in haskell.";
      description = "A library for writing build systems in Haskell, built on top of\n<http://shakebuild.com shake>.\n\nPier provides a generic approach to building and caching file outputs.\nIt enables build actions to be written in a \"forwards\" style, which\ngenerally leads to simpler logic than backwards-defined build systems\nsuch as make or (normal) Shake, where each step of the build logic must\nbe written as a new build rule.\n\nFor more details, see \"Pier.Core.Artifact\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash-sha256)
          (hsPkgs.directory)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.process)
          (hsPkgs.shake)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.unix)
          ];
        };
      };
    }