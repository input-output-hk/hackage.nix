{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hablo"; version = "1.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tissevert+devel@marvid.fr";
      author = "Tissevert";
      homepage = "https://git.marvid.fr/Tissevert/hablo";
      url = "";
      synopsis = "A minimalist static blog generator";
      description = "Hablo is a fediverse-oriented static blog generator for articles written\nin Markdown. It tries to generate as little HTML as needed and uses\nJavascript to implement dynamic features in the browser.\nThose features include the handling of comments and a cached navigation\nto minimize the queries to the server. Hablo also generate cards for all\npages, including articles for prettier shares on social-networks.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hablo" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.lucid)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.template)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }