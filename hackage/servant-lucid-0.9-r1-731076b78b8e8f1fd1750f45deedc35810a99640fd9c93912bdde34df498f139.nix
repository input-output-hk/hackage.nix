{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-lucid"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "2015-2018 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://haskell-servant.readthedocs.org/";
      url = "";
      synopsis = "Servant support for lucid";
      description = "Servant support for lucid.\n\n'HTML' content type which will use `ToHtml` class.\n\nLucid.Servant uses `Link` rather than `Text` for safe 'href' attributes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-media)
          (hsPkgs.lucid)
          (hsPkgs.text)
          (hsPkgs.servant)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lucid)
            (hsPkgs.servant-lucid)
            (hsPkgs.servant-server)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }