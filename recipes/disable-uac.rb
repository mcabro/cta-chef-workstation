system_policies = 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System'

registry_key system_policies do
  values [{
      :name => 'EnableLUA',
      :type => :dword,
      :data => 0
    }]
end

puts 'Vamos a por la segunda clave'

registry_key system_policies do
  values [{ #alternative syntax for symbol to symbol reference
      name: 'ConsentPromptBehaviorAdmin',
      type: :dword,
      data: 0
    }]
end
