{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "telega"; version = "0.1.8"; };
      license = "MIT";
      copyright = "Copyright (c) 2019 Murat Kasimov";
      maintainer = "Murat Kasimov <iokasimov.m@gmail.com>";
      author = "Murat Kasimov";
      homepage = "https://github.com/iokasimov/telega";
      url = "";
      synopsis = "Telegram Bot API binding";
      description = "High-level bindings, typed entities, inline mode only";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.http-client)
          (hsPkgs.wreq)
          ];
        };
      };
    }