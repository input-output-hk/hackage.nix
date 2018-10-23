{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "authenticate";
        version = "0.11.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Hiromi Ishii, Arash Rouhani";
      homepage = "http://github.com/yesodweb/authenticate";
      url = "";
      synopsis = "Authentication methods for Haskell web applications.";
      description = "Focus is on third-party authentication methods, such as OpenID,\nrpxnow and Facebook.";
      buildType = "Simple";
    };
    components = {
      "authenticate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.http-conduit)
          (hsPkgs.tagsoup)
          (hsPkgs.failure)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.case-insensitive)
          (hsPkgs.RSA)
          (hsPkgs.time)
          (hsPkgs.base64-bytestring)
          (hsPkgs.SHA)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.xml-conduit)
          (hsPkgs.blaze-builder)
          (hsPkgs.attoparsec)
          (hsPkgs.tls)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.process)
          (hsPkgs.conduit)
          (hsPkgs.blaze-builder-conduit)
        ];
      };
    };
  }