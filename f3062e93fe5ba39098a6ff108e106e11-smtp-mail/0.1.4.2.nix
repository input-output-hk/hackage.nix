{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "smtp-mail";
          version = "0.1.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jhickner@gmail.com";
        author = "Jason Hickner";
        homepage = "http://github.com/jhickner/smtp-mail";
        url = "";
        synopsis = "Simple email sending via SMTP";
        description = "";
        buildType = "Simple";
      };
      components = {
        "smtp-mail" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cryptohash
            hsPkgs.filepath
            hsPkgs.mime-mail
            hsPkgs.network
            hsPkgs.text
          ];
        };
      };
    }