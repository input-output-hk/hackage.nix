{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "memcache"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 David Terei.";
      maintainer = "David Terei <code@davidterei.com>";
      author = "David Terei <code@davidterei.com>";
      homepage = "https://github.com/dterei/memcache-hs";
      url = "";
      synopsis = "A memcached client library.";
      description = "A client library for a memcached cluster.\n\nIt supports the binary memcached protocol and SASL authentication. No support\nfor the ASCII protocol is provided. It supports connecting to a single, or a\ncluster of memcached servers. When connecting to a cluser, consistent hashing\nis used for routing requests to the appropriate server.\n\nComplete coverage of the memcached protocol is provided except for multi-get\nand other pipelined operations.\n\nBasic usage is:\n\n> import qualified Database.Memcache.Client as M\n>\n> mc <- M.newClient [M.ServerSpec \"localhost\" 11211 M.NoAuth] M.defaultOptions\n> M.set mc \"key\" \"value\" 0 0\n> v <- M.get mc \"key\"\n\nYou should only need to import 'Database.Memcache.Client', but for now other\nmodules are exposed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "full" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."memcache" or ((hsPkgs.pkgs-errors).buildDepError "memcache"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "parser" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."memcache" or ((hsPkgs.pkgs-errors).buildDepError "memcache"))
            ];
          buildable = true;
          };
        };
      };
    }