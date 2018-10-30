{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "fountain";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "http://tomahawkins.org";
      url = "";
      synopsis = "A fountain codec.";
      description = "Fountain codes are forward error correction codes for erasure channels.\nThey are able to recover lost packets without needing a backchannel.\nAs a rateless code, transmitters generate packets at random, on the fly.\nReceivers then listen to as many packets as needed to reconstruct the message.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.random)
        ];
      };
    };
  }