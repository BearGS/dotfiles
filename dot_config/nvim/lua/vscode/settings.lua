

-- Split Window
function SplitUp() vim.fn.VSCodeNotify("workbench.action.splitEditorUp") end
function splitDown() vim.fn.VSCodeNotify("workbench.action.splitEditorDown") end
function splitLeft() vim.fn.VSCodeNotify("workbench.action.splitEditorLeft") end
function splitRight() vim.fn.VSCodeNotify("workbench.action.splitEditorRight") end
function closeOtherEditors() vim.fn.VSCodeNotify("workbench.action.closeOtherEditors") end
function closeAllEditors() vim.fn.VSCodeNotify("workbench.action.closeAllEditors") end
vim.keymap.set("n", "sh", splitDown)
vim.keymap.set("x", "sh", splitDown)
vim.keymap.set("n", "sv", splitRight)
vim.keymap.set("x", "sv", splitRight)
vim.keymap.set("n", "so", closeOtherEditors)
vim.keymap.set("x", "so", closeOtherEditors)
vim.keymap.set("n", "sa", closeAllEditors)
vim.keymap.set("x", "sa", closeAllEditors)



-- " Better Navigation
function NavigateUp() vim.fn.VSCodeNotify("workbench.action.navigateUp") end
function NavigateDown() vim.fn.VSCodeNotify("workbench.action.navigateDown") end
function NavigateLeft() vim.fn.VSCodeNotify("workbench.action.navigateLeft") end
function NavigateRight() vim.fn.VSCodeNotify("workbench.action.navigateRight") end
vim.keymap.set("n", "<C-k>", NavigateUp)
vim.keymap.set("x", "<C-k>", NavigateUp)
vim.keymap.set("n", "<C-j>", NavigateDown)
vim.keymap.set("x", "<C-j>", NavigateDown)
vim.keymap.set("n", "<C-h>", NavigateLeft)
vim.keymap.set("x", "<C-h>", NavigateLeft)
vim.keymap.set("n", "<C-l>", NavigateRight)
vim.keymap.set("x", "<C-l>", NavigateRight)

function ShowOutlineMap() vim.fn.VSCodeNotify("outline.focus") end
vim.keymap.set("n", ",o", ShowOutlineMap)
vim.keymap.set("x", ",o", ShowOutlineMap)

-- " Compare
function CompareTextWithClipboard() vim.fn.VSCodeNotify("extension.partialDiff.diffSelectionWithClipboard") end
vim.keymap.set("n", ",m", CompareTextWithClipboard)
vim.keymap.set("x", ",m", CompareTextWithClipboard)


function ViewFileHistory() vim.fn.VSCodeNotify("githd.viewFileHistory") end
vim.keymap.set("n", ",h", ViewFileHistory)
vim.keymap.set("x", ",h", ViewFileHistory)

-- Sidebar
function ToggleSidebar() vim.fn.VSCodeNotify("workbench.action.toggleSidebarVisibility") end
vim.keymap.set("n", ",e", ToggleSidebar)
vim.keymap.set("x", ",e", ToggleSidebar)


-- function NextGitDiff() vim.fn.VSCodeNotify("editor.action.diffReview.next") end
-- vim.keymap.set("n", "<C-n>", NextGitDiff)
-- vim.keymap.set("x", "<C-n>", NextGitDiff)
function NextGitConflict() vim.fn.VSCodeNotify("merge-conflict.next") end
vim.keymap.set("n", "gn", NextGitConflict)
vim.keymap.set("x", "gn", NextGitConflict)

function AcceptCurrentChange() vim.fn.VSCodeNotify("merge-conflict.accept.current") end
vim.keymap.set("n", "mc", AcceptCurrentChange)
vim.keymap.set("x", "mc", AcceptCurrentChange)
function AcceptIncomingChange() vim.fn.VSCodeNotify("merge-conflict.accept.incoming") end
vim.keymap.set("n", "mi", AcceptIncomingChange)
vim.keymap.set("x", "mi", AcceptIncomingChange)





-- Tab
--
function NextTab() vim.fn.VSCodeNotify("workbench.action.nextEditorInGroup") end
vim.keymap.set("n", "<Tab>", NextTab)
vim.keymap.set("x", "<Tab>", NextTab)
function PrevTab() vim.fn.VSCodeNotify("workbench.action.previousEditorInGroup") end
vim.keymap.set("n", "<S-Tab>", PrevTab)
vim.keymap.set("x", "<S-Tab>", PrevTab)


-- Fold
function FoldAll() vim.fn.VSCodeNotify("editor.foldAll") end
function FoldBlock() vim.fn.VSCodeNotify("editor.fold") end
function UnFoldBlock() vim.fn.VSCodeNotify("editor.unfold") end
function FoldLevel1() vim.fn.VSCodeNotify("editor.foldLevel1") end
function FoldLevel2() vim.fn.VSCodeNotify("editor.foldLevel2") end
function UnfoldAll() vim.fn.VSCodeNotify("editor.unfoldAll") end
function Goto_parent_fold() vim.fn.VSCodeNotify("editor.gotoParentFold") end
vim.keymap.set("", "zp", Goto_parent_fold)
vim.keymap.set("n", "zm", FoldAll)
vim.keymap.set("x", "zm", FoldAll)
vim.keymap.set("n", "zn", UnfoldAll)
vim.keymap.set("x", "zn", UnfoldAll)
vim.keymap.set("n", "zj", FoldLevel1)
vim.keymap.set("x", "zj", FoldLevel1)
vim.keymap.set("n", "zk", FoldLevel2)
vim.keymap.set("x", "zk", FoldLevel2)
vim.keymap.set("n", "zo", UnFoldBlock)
vim.keymap.set("x", "zo", UnFoldBlock)
vim.keymap.set("n", "zc", FoldBlock)
vim.keymap.set("x", "zc", FoldBlock)

-- Comment



-- OpenLink
-- https://www.baidu.com
function Open_link() vim.fn.VSCodeNotify("editor.action.openLink") end
vim.keymap.set("n", "gl", Open_link)



-- HopWord
local opts = {
  silent = true, -- do not show message
  remap = false,
}

vim.keymap.set('n', '<leader>s', '<Cmd>HopWord<CR>', opts)
vim.keymap.set('n', '<leader>f', '<Cmd>HopWordCurrentLine<CR>', opts)



-- " Bind C-/ to vscode commentary since calling from vscode produces double comments due to multiple cursors
-- xnoremap <silent> <C-/> :call Comment()<CR>
-- nnoremap <silent> <C-/> :call Comment()<CR>

-- nnoremap <silent> <C-w>_ :<C-u>call VSCodeNotify('workbench.action.toggleEditorWidths')<CR>

-- nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
-- xnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>



function Center_screen() vim.cmd("call <SNR>4_reveal('center', 0)") end
vim.keymap.set("", "M", Center_screen)
function Top_screen() vim.cmd("call <SNR>4_reveal('top', 0)") end
function Bottom_screen() vim.cmd("call <SNR>4_reveal('bottom', 0)") end
function Move_to_top_screen() vim.cmd("call <SNR>4_moveCursor('top')") end
function Move_to_bottom_screen() vim.cmd("call <SNR>4_moveCursor('bottom')") end

function Move_to_bottom_screen__center_screen()
  Move_to_bottom_screen()
  Center_screen()
end
vim.keymap.set("", "L", Move_to_bottom_screen__center_screen)

function Move_to_top_screen__center_screen()
  Move_to_top_screen()
  Center_screen()
end
vim.keymap.set("", "H", Move_to_top_screen__center_screen)

-- function Toggle_typewriter() vim.fn.VSCodeNotify("toggleTypewriter") end
-- vim.keymap.set("", "zy", Toggle_typewriter)


-- function Reveal_definition_aside() vim.fn.VSCodeNotify("editor.action.revealDefinitionAside") end
-- vim.keymap.set("n", "gD", Reveal_definition_aside)

-- function Toggle_fold() vim.fn.VSCodeNotify("editor.toggleFold") end
-- vim.keymap.set("n", "za", Toggle_fold)

-- function Format_document()
--   vim.fn.VSCodeNotify("editor.action.formatDocument")
--   Trim_trailing_whitespace()
--   print("formatted")
-- end
-- vim.keymap.set("n", "=ie", Format_document)

-- function Git_stage_file()
--   Trim_trailing_whitespace()
--   Save()
--   vim.fn.VSCodeNotify("git.stage")
-- end
-- vim.keymap.set("n", "<leader>ga", Git_stage_file)

-- function Git_stage_all()
--   Trim_trailing_whitespace()
--   Save()
--   vim.fn.VSCodeNotify("git.stageAll")
-- end
-- vim.keymap.set("n", "<leader>gA", Git_stage_all)

-- function Git_unstage_file()
--   Save()
--   vim.fn.VSCodeNotify("git.unstage")
-- end
-- vim.keymap.set("n", "<leader>gu", Git_unstage_file)

-- function Git_commit()
--   Trim_trailing_whitespace()
--   Save()
--   vim.fn.VSCodeNotify("git.commit")
-- end
-- vim.keymap.set("n", "<leader>gm", Git_commit)

-- function Git_commit_amend()
--   Trim_trailing_whitespace()
--   Save()
--   vim.fn.VSCodeNotify("git.commitStagedAmend")
-- end
-- vim.keymap.set("n", "<leader>gM", Git_commit_amend)

-- function Git_push()
--   Trim_trailing_whitespace()
--   Save()
--   vim.fn.VSCodeNotify("git.push")
-- end
-- vim.keymap.set("n", "<leader>gp", Git_push)

-- function Git_push_force()
--   Trim_trailing_whitespace()
--   Save()
--   vim.fn.VSCodeNotify("git.pushForce")
-- end
-- vim.keymap.set("n", "<leader>gP", Git_push_force)

-- function Git_revert_change() vim.fn.VSCodeNotifyVisual("git.revertSelectedRanges", 0) end
-- vim.keymap.set("n", "<leader>gr", Git_revert_change)
-- vim.keymap.set("v", "<leader>gr", Git_revert_change)

-- function Git_stage_change() vim.fn.VSCodeNotifyVisual("git.stageSelectedRanges", 0) end
-- vim.keymap.set("n", "<leader>gt", Git_stage_change)
-- vim.keymap.set("v", "<leader>gt", Git_stage_change)

-- function Git_unstage_change() vim.fn.VSCodeNotifyVisual("git.unstageSelectedRanges", 0) end
-- vim.keymap.set("n", "<leader>gT", Git_unstage_change)
-- vim.keymap.set("v", "<leader>gT", Git_unstage_change)

-- function Git_open_changes() vim.fn.VSCodeNotify("git.openChange") end
-- vim.keymap.set("n", "<leader>gn", Git_open_changes)

-- function Codesnap() vim.fn.VSCodeNotifyVisual("codesnap.start", true) end
-- vim.keymap.set("v", "gs", Codesnap)

-- function Outdent_vis() vim.fn.VSCodeNotifyVisual("editor.action.outdentLines", false) end
-- vim.keymap.set("v", "<", Outdent_vis)

-- function Indent_vis() vim.fn.VSCodeNotifyVisual("editor.action.indentLines", false) end
-- vim.keymap.set("v", ">", Indent_vis)

-- function Comment_vis() vim.fn.VSCodeNotifyVisual("editor.action.commentLine", false) end
-- vim.keymap.set("v", "gc", Comment_vis)
