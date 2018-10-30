{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { upload = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yackage";
        version = "0.7.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/yackage";
      url = "";
      synopsis = "Personal Hackage replacement for testing new packages. (deprecated)";
      description = "This package installs a yackage executable that runs a simplistic hackage-like server. It allows you to upload packages produced via cabal sdist and install them via cabal. The trick is to add the yackage repository to your cabal config file, with a line such as:\n\nremote-repo: yackage:http://localhost:3500/";
      buildType = "Simple";
    };
    components = {
      exes = {
        "yackage" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod-core)
            (hsPkgs.warp)
            (hsPkgs.Cabal)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.zlib)
            (hsPkgs.tar)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.yaml)
            (hsPkgs.cmdargs)
            (hsPkgs.wai)
            (hsPkgs.transformers)
            (hsPkgs.hamlet)
            (hsPkgs.shakespeare)
            (hsPkgs.yesod-form)
            (hsPkgs.http-types)
            (hsPkgs.blaze-html)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
            (hsPkgs.conduit)
          ];
        };
        "yackage-upload" = {
          depends  = pkgs.lib.optionals (flags.upload) [
            (hsPkgs.base)
            (hsPkgs.http-conduit)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }