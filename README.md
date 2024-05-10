# This guy NeoVims

a neovim configuration for slowpuke by slowpuke

TODO
- try and fix better comments
- todo tree would be nice that im working on larger projects, it is installed and working but it needs configuring
    - remove the necessary : for each section
    - change the colors, remove the background color if possible
    - toggle for the window showing all the todos (:TodoQuickFix)
- try to remove suggestions from comments, it only happens for lua, so maybe check a different lsp for it
- i feel like there is a better way to orginize the lsp section, with better setting up for each lsp, watch a RECENT video about it maybe
    - for rust there's a lsp zero rust video, watch that. See if the better comments issue is fixed with the configuration of the lsp, remember that the words are highlighted in the comments too, so i think its an lsp issue. If that doesnt help just write an issue on the better comments github page. This might be the problem -- rust-analyzer.semanticHighlighting.doc.comment.inject.enable -- since its enabled by default, see this page (which is an lsp config page for rust_analyzer taken from lsp-zero docs) https://github.com/rust-lang/rust-analyzer/blob/master/docs/user/generated_config.adoc
    - lua needs to be configured
    - see if with configuration hls can be finally run
    - what if in rust i allowed all features?

BIG TODO
I think im configuring plugins wrong with lazy, i think the way is shown in these two videos is the correct way
things might break so be sure that you're tracking the changes
- https://www.youtube.com/watch?v=6mxWayq-s9I
- https://www.youtube.com/watch?v=JXLP4IdN4xM
theres also a video by prime where he switches to the lazy package manager, might be worth a watch

this might be a huge rehaul, but since i want to do it with the whole system it was bound to happen with nvim sooner or later, so lets just do it

i think the whole directory structure will have to be changed, at this point i think it might be a good idea to make a backupn of this directory and start over copying the files in with the correct syntax and structure
