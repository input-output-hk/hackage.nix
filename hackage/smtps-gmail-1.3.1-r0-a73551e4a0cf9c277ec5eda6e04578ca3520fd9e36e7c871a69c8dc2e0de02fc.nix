{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16.0";
      identifier = { name = "smtps-gmail"; version = "1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2015, Enzo Haussecker. All rights reserved.";
      maintainer = "Enzo Haussecker <ehaussecker@gmail.com>";
      author = "Enzo Haussecker <ehaussecker@gmail.com>";
      homepage = "https://github.com/enzoh/smtps-gmail";
      url = "";
      synopsis = "Gmail SMTP Client";
      description = "Send email from your Gmail account.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.data-default)
          (hsPkgs.filepath)
          (hsPkgs.mime-mail)
          (hsPkgs.network)
          (hsPkgs.resourcet)
          (hsPkgs.stringsearch)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.tls)
          ];
        };
      };
    }