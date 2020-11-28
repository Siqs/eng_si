Then("eu vejo na lista o endereço mais próximo") do
    visit "/"
    expect(page.has_content? 'Mais Proximo').to be true
end

Then("eu não vejo na lista um endereço mais próximo") do
    visit "/"
    expect(page.has_content? 'Mais Proximo').to be false  
end