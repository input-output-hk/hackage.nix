{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "authenticate";
        version = "0.9.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/authenticate/tree/master";
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
          (hsPkgs.http-enumerator)
          (hsPkgs.tagsoup)
          (hsPkgs.failure)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
          (hsPkgs.xml)
          (hsPkgs.case-insensitive)
          (hsPkgs.RSA)
          (hsPkgs.time)
          (hsPkgs.base64-bytestring)
          (hsPkgs.SHA)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.enumerator)
          (hsPkgs.blaze-builder)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }