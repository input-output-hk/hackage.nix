{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "http-conduit-downloader"; version = "1.0.30"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vladimir Shabanov <vshabanoff@gmail.com>";
      author = "Vladimir Shabanov <vshabanoff@gmail.com>";
      homepage = "https://github.com/bazqux/http-conduit-downloader";
      url = "";
      synopsis = "HTTP downloader tailored for web-crawler needs.";
      description = "HTTP/HTTPS downloader built on top of @http-conduit@\nand used in <https://bazqux.com> crawler.\n\n* Handles all possible http-conduit exceptions and returns\nhuman readable error messages.\n\n* Handles some web server bugs (returning 'deflate' data instead of 'gzip',\ninvalid 'gzip' encoding).\n\n* Uses OpenSSL instead of 'tls' package (since 'tls' doesn't handle all sites).\n\n* Ignores invalid SSL sertificates.\n\n* Receives data in 32k chunks internally to reduce memory fragmentation\non many parallel downloads.\n\n* Download timeout.\n\n* Total download size limit.\n\n* Returns HTTP headers for subsequent redownloads and handles\n'Not modified' results.\n\n* Can be used with external DNS resolver (e.g. concurrent-dns-cache).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }