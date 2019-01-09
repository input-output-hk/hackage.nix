{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "network-bytestring"; version = "0.1.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johan.tibell@gmail.com";
      author = "Johan Tibell";
      homepage = "http://github.com/tibbe/network-bytestring";
      url = "";
      synopsis = "Fast and memory efficient low-level networking";
      description = "Faster and more memory efficient low-level socket\nfunctions using 'Data.ByteString's instead of\n'String's.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.network) ] ++ (if flags.split-base
          then [ (hsPkgs.base) (hsPkgs.bytestring) ]
          else [ (hsPkgs.base) ]);
        };
      };
    }