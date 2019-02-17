# What are the options for Responsive Active Storage images

`ruby-on-rails` `rails-activestorage` `javascript` `responsive-images`

I am using Active Storage for my blog app attachments. Many of the viewers use their mobiles, that's why i need @2 and @3 variants of images.

As far as I know, `srcset` option for `image_tag` doesn't work with Active Storage, so I was wondering about creating image helper

```ruby
def image_helper(scale)
  if scale == 1
    return self.file.variant(resize: "400x400")
  elsif scale == 2
    return self.file.variant(resize: "800x800")
  end
end
```

and detect viewport **@scale** that can be passed in views

```ruby
<%= image_tag product.image_helper(@scale) %>
```
Can I do this using **Javascript** or are there other options?