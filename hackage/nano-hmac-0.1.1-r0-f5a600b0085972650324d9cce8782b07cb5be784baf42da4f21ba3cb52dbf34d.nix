{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "nano-hmac";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<hitesh.jasani@gmail.com>";
      author = "Hitesh Jasani";
      homepage = "http://www.jasani.org/";
      url = "";
      synopsis = "Bindings to OpenSSL HMAC.";
      description = "Bindings to OpenSSL HMAC.  Initially only supporting md5.";
      buildType = "Simple";
    };
    components = {
      "nano-hmac" = {
        depends  = if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]
          else [ (hsPkgs.base) ];
        libs = [ (pkgs."crypto") ];
      };
    };
  }