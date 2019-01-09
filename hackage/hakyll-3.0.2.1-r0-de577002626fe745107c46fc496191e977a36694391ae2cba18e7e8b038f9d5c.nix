{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { inotify = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hakyll"; version = "3.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jaspervdj@gmail.com";
      author = "Jasper Van der Jeugt";
      homepage = "http://jaspervdj.be/hakyll";
      url = "";
      synopsis = "A simple static site generator library.";
      description = "A simple static site generator library, mainly aimed at\ncreating blogs and brochure sites.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.pandoc)
          (hsPkgs.regex-base)
          (hsPkgs.regex-pcre)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.binary)
          (hsPkgs.hamlet)
          (hsPkgs.blaze-html)
          (hsPkgs.snap-server)
          (hsPkgs.snap-core)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.HTTP)
          (hsPkgs.tagsoup)
          (hsPkgs.hopenssl)
          (hsPkgs.unix)
          (hsPkgs.strict-concurrency)
          ] ++ (pkgs.lib).optional (flags.inotify) (hsPkgs.hinotify);
        };
      };
    }