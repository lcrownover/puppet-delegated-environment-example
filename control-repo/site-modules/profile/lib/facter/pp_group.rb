Facter.add(:pp_group) do
  setcode do
		begin
			Facter.value(:pp_role).split('::')[0].split('_')[1]
		rescue
			'missing_pp_role'
		end
  end
end
