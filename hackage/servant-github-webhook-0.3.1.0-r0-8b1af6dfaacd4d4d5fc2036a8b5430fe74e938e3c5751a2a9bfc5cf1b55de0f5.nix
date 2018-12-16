{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { old-base = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-github-webhook";
        version = "0.3.1.0";
      };
      license = "MIT";
      copyright = "Jacob Thomas Errington 2016";
      maintainer = "servant-github-webhook@mail.jerrington.me";
      author = "Jacob Thomas Errington";
      homepage = "https://github.com/tsani/servant-github-webhook";
      url = "";
      synopsis = "Servant combinators to facilitate writing GitHub webhooks.";
      description = "This package provides servant combinators that make writing safe GitHub\nwebhooks very simple.\n\nIt features automatic verification of the digital signatures provided by\nGitHub in the webhook HTTP requests as well as route dispatching based on\nrepository event type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.github)
          (hsPkgs.http-types)
          (hsPkgs.memory)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.wai)
        ] ++ (if flags.old-base
          then [
            (hsPkgs.base)
            (hsPkgs.transformers)
          ]
          else [ (hsPkgs.base) ]);
      };
      tests = {
        "multikey" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.servant-server)
            (hsPkgs.servant-github-webhook)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ] ++ pkgs.lib.optional (flags.old-base) (hsPkgs.transformers);
        };
        "singlekey" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.servant-server)
            (hsPkgs.servant-github-webhook)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ] ++ pkgs.lib.optional (flags.old-base) (hsPkgs.transformers);
        };
      };
    };
  }