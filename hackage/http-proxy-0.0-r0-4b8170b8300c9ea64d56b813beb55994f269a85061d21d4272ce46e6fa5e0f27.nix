{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-bytestring = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "http-proxy"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "erikd@mega-nerd.com";
      author = "Michael Snoyman, Stephen Blackheath, Erik de Castro Lopo";
      homepage = "https://github.com/erikd/http-proxy";
      url = "";
      synopsis = "A library for writing HTTP and HTTPS proxies";
      description = "http-proxy is a library for writing HTTP and HTTPS proxies.\n\nUse of the enumerator library provides file streaming from the upstream server\nthrough the proxy to the client program. Memory usage of the proxy depends on\nnumber of files being downlaoded simultaneously, not the size of the files\nbeing downloaded.\n\nEventually, features like logging, request re-writing, disk caching etc will\nbe made available via caller provided functions in the Settings data type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
          (hsPkgs."http-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "http-enumerator"))
          (hsPkgs."blaze-builder-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder-enumerator"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
          ] ++ (if flags.network-bytestring
          then [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "network-bytestring"))
            ]
          else [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ]);
        buildable = true;
        };
      };
    }