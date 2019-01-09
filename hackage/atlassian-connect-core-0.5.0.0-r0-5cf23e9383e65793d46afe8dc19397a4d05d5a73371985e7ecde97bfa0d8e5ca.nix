{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "atlassian-connect-core"; version = "0.5.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2014 Robert Massaioli, Avi Knoll, Eero Kaukonen";
      maintainer = "rmassaioli@atlassian.com";
      author = "Robert Massaioli";
      homepage = "https://bitbucket.org/ajknoll/atlassian-connect-core";
      url = "";
      synopsis = "Atlassian Connect snaplet for the Snap Framework and helper code.";
      description = "This library allows you to quickly get an Atlassian Connect application running\non top of the Snap Framework. It provides best practices and helper functions to get you moving\nquickly. Please read the rest of the documentation for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.atlassian-connect-descriptor)
          (hsPkgs.jwt)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cipher-aes)
          (hsPkgs.configurator)
          (hsPkgs.containers)
          (hsPkgs.hostname)
          (hsPkgs.http-media)
          (hsPkgs.mtl)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-units)
          (hsPkgs.transformers)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.network-api-support)
          (hsPkgs.cryptohash)
          ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
        };
      };
    }