{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "azure-email"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 (c) Layer 3 Communications, LLC.";
      maintainer = "dcartwright@layer3com.com";
      author = "layer-3-communications";
      homepage = "https://github.com/layer-3-communications/azure-email";
      url = "";
      synopsis = "send email with microsoft azure";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.RSA)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.lens-aeson)
          (hsPkgs.microlens)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uuid)
          (hsPkgs.wreq)
          ];
        };
      };
    }