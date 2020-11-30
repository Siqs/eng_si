Then("eu vejo na lista o endereço mais próximo") do
    visit "/"
    
    # expect(page).to have_selector(:css, "div#clinicaProxima")
    # expect(page).to have_xpath("//div[@id = 'clinicaProxima']")
end

Then("eu não vejo na lista um endereço mais próximo") do
    visit "/"
    expect(page).to have_no_xpath("//div[@id = 'clinicaProxima']")
end
