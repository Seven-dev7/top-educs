module StaticHelper

	# Button Resume
	def button_display_resume
		resume_current_user = Resume.find_by(user_id: current_user.id)
		if resume_current_user != nil
			return (button_to 'Mon CV', resume_path(resume_current_user.id), method: :get) +
			(button_to 'x', resume_path(resume_current_user.id), method: :delete) +
			(button_to 'Edit', edit_resume_path(resume_current_user.id), method: :get)
		else
			return link_to 'Ajouter un CV', new_resume_path
		end
	end

	# Button Carte Vitale
	def button_display_carte_vitale
		carte_vitale_current_user = CarteVitale.find_by(user_id: current_user.id)
		if carte_vitale_current_user != nil
			return (button_to 'Ma Carte Vitale', carte_vitale_path(carte_vitale_current_user.id), method: :get) +
			(button_to 'x', carte_vitale_path(carte_vitale_current_user.id), method: :delete) +
			(button_to 'Edit', edit_carte_vitale_path(carte_vitale_current_user.id), method: :get)
		else
			return link_to 'Ajouter ma Carte Vitale', new_carte_vitale_path
		end
	end

	# Button Diplomes
	def button_display_diploma
		diploma_current_user = Diploma.find_by(user_id: current_user.id)
		if diploma_current_user != nil
			return (button_to 'Mes diplômes', diploma_path(diploma_current_user.id), method: :get) +
			(button_to 'x', diploma_path(diploma_current_user.id), method: :delete) +
			(button_to 'Edit', edit_diploma_path(diploma_current_user.id), method: :get) +
			(button_to 'Ajouter un Diplôme', new_diploma_path, method: :get)
		else
			return link_to 'Ajouter un Diplôme', new_diploma_path
		end
	end

	# Button ID
	def button_display_id
		id_current_user = Id.find_by(user_id: current_user.id)
		if id_current_user != nil
			return (button_to "Ma Carte d'Identité", id_path(id_current_user.id), method: :get)	+
			(button_to 'x', id_path(id_current_user.id), method: :delete) +
			(button_to 'Edit', edit_id_path(id_current_user.id), method: :get) +
			(button_to 'Ajouter le Recto', new_id_path, method: :get)
		else
			return link_to "Ajouter ma carte d'identité", new_id_path
		end
	end

	# Button KBIS
	def button_display_kbis
		kbis_current_user = Kbi.find_by(user_id: current_user.id)
		if kbis_current_user != nil
			return (button_to "Mon Kbis", kbi_path(kbis_current_user.id), method: :get) + 
			(button_to 'x', kbi_path(kbis_current_user.id), method: :delete) +
			(button_to 'Edit', edit_kbi_path(kbis_current_user.id), method: :get)	
		else
			return link_to "Ajouter mon KBIS", new_kbi_path
		end
	end

	# Button Permis B
	def button_display_permis_b
		permis_b_current_user = PermisB.find_by(user_id: current_user.id)
		if permis_b_current_user != nil
			return (button_to "Mon Permis de Conduire", permis_b_path(permis_b_current_user.id), method: :get) +
			(button_to 'x', permis_b_path(permis_b_current_user.id), method: :delete) +
			(button_to 'Edit', edit_permis_b_path(permis_b_current_user.id), method: :get) +
			(button_to 'Ajouter le Recto', new_permis_b_path, method: :get)	
		else
			return link_to "Ajouter mon Permis de Conduire", new_permis_b_path
		end
	end

	# Button RIB
	def button_display_rib
		rib_current_user = Rib.find_by(user_id: current_user.id)
		if rib_current_user != nil
			return (button_to "Mon RIB", rib_path(rib_current_user.id), method: :get) + 
			(button_to 'x', rib_path(rib_current_user.id), method: :delete) +
			(button_to 'Edit', edit_rib_path(rib_current_user.id), method: :get)		
		else
			return link_to "Ajouter mon RIB", new_rib_path
		end
	end

	#Profil incomplete display
	def incomplete_profile
	if current_user.first_name == nil || current_user.last_name == nil || current_user.job == nil || current_user.job == nil || current_user.nationality == nil || current_user.phone == nil || current_user.adress == nil || current_user.ZIP_CODE == nil
		link_to "PROFIL IMCOMPLET", edit_user_registration_path, :class => "btn btn-secondary btn-block"
	end
		
	end

	def first_name_nil(name)

		if name == "" || name == nil
			return " M. / Mme."
		else
			return name.titleize
		end	
	end

	def last_name_nil(name)
		if name == "" || name == nil
			return " "
		else
			return name.upcase
		end
	end

	def hello_name_profile
		"Bienvenue #{first_name_nil(current_user.first_name)} #{last_name_nil(current_user.last_name)}"
	end

end

















