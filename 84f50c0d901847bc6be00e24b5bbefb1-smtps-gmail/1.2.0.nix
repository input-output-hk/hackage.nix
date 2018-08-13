{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.16.0";
      identifier = {
        name = "smtps-gmail";
        version = "1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, Enzo Haussecker. All rights reserved.";
      maintainer = "Enzo Haussecker <enzo@ucsd.edu>";
      author = "Enzo Haussecker <enzo@ucsd.edu>";
      homepage = "https://github.com/enzoh/smtps-gmail";
      url = "";
      synopsis = "Gmail SMTP Client";
      description = "Send email from your Gmail account.";
      buildType = "Simple";
    };
    components = {
      "smtps-gmail" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cprng-aes)
          (hsPkgs.data-default)
          (hsPkgs.filepath)
          (hsPkgs.mime-mail)
          (hsPkgs.network)
          (hsPkgs.stringsearch)
          (hsPkgs.text)
          (hsPkgs.tls)
        ];
      };
    };
  }