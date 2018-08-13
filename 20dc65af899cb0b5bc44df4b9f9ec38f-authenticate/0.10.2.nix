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
      specVersion = "1.6";
      identifier = {
        name = "authenticate";
        version = "0.10.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Hiromi Ishii, Arash Rouhani";
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
          (hsPkgs.aeson-native)
          (hsPkgs.http-enumerator)
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
          (hsPkgs.enumerator)
          (hsPkgs.xml-enumerator)
          (hsPkgs.blaze-builder)
          (hsPkgs.attoparsec)
          (hsPkgs.tls)
          (hsPkgs.containers)
          (hsPkgs.process)
        ];
      };
    };
  }