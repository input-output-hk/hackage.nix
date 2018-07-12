{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "twitch";
          version = "0.1.3.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "https://github.com/jfischoff/twitch";
        url = "";
        synopsis = "A high level file watcher DSL";
        description = "Twitch is a monadic DSL and library for file watching.\nIt conveniently utilizes 'do' notation in the style of\nShake and clay to expose the functionality of the\nfsnotify cross-platform file system watcher.\n\nHere is an example that converts Markdown files to HTML and reloads Safari\nwhenever the input files change.\n\n@\nimport Twitch\nimport Filesystem.Path.CurrentOS\n\nmain = defaultMain \$ do\n\"*.md\"   |> \\\\filePath -> system \$ \"pandoc -t html \" ++ encodeString filePath\n\"*.html\" |> \\\\_ -> system \$ \"osascript refreshSafari.AppleScript\"\n@\n";
        buildType = "Simple";
      };
      components = {
        "twitch" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.Glob
            hsPkgs.time
            hsPkgs.data-default
            hsPkgs.fsnotify
            hsPkgs.optparse-applicative
            hsPkgs.stm-chans
            hsPkgs.system-fileio
          ];
        };
      };
    }