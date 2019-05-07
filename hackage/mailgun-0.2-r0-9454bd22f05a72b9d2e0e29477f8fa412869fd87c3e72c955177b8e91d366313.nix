{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "mailgun"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 davean";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "API binding for Mailgun";
      description = "API binding for mailgun in Haskell. Primarily the v3 API.\n\nAs of version 0.2, this package was entirely rewriten. Previous versions were developed by Andrew Rademacher.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-filthy)
          (hsPkgs.ascii)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.ini)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.machines)
          (hsPkgs.mime-mail)
          (hsPkgs.mime-types)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.these)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.wreq)
          ];
        };
      };
    }