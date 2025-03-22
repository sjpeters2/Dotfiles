-- Add this to your lua/plugins.lua or wherever you manage your plugins
return {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    config = function()
        require("Comment").setup()
    end
}

