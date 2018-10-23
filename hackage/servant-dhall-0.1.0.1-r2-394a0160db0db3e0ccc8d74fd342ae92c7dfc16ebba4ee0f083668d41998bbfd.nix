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
        name = "servant-dhall";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://haskell-servant.readthedocs.org/";
      url = "";
      synopsis = "Servant Dhall content-type";
      description = "Servant Dhall bindings.\n\nProvides @MimeRender@ and @MimeUnrender@ instances.\nSo you can accept and return Dhall expressions.\n\n/Note:/ Reading (and evaluating) Dhall expressions from untrusted sources is a security risk.";
      buildType = "Simple";
    };
    components = {
      "servant-dhall" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring)
          (hsPkgs.dhall)
          (hsPkgs.megaparsec)
          (hsPkgs.prettyprinter)
          (hsPkgs.servant)
          (hsPkgs.text)
          (hsPkgs.http-media)
        ];
      };
      tests = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.http-media)
            (hsPkgs.servant)
            (hsPkgs.servant-dhall)
            (hsPkgs.servant-server)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }