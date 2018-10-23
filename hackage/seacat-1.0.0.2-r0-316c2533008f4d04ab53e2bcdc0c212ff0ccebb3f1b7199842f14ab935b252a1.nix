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
        name = "seacat";
        version = "1.0.0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/Barrucadu/lambdadelta";
      url = "";
      synopsis = "Small web framework using Warp and WAI";
      description = "A small Haskell web framework using Warp and WAI that tries to get\nout of your way and let you do what you want, but also providing\nmore advanced features like rate limiting and flood protection.\n\n[WAI] <http://hackage.haskell.org/package/wai>\n\n[Warp] <http://hackage.haskell.org/package/warp>";
      buildType = "Simple";
    };
    components = {
      "seacat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.ConfigFile)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.http-types)
          (hsPkgs.mime-types)
          (hsPkgs.MissingH)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.persistent)
          (hsPkgs.persistent-postgresql)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-middleware-static)
          (hsPkgs.warp)
          (hsPkgs.web-routes)
          (hsPkgs.web-routes-wai)
        ];
      };
    };
  }